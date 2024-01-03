package dev.controller;

// Imports...

import dev.domain.Income;
import dev.service.TaxService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TaxController {


    private TaxService taxService;

    @GetMapping("/tax")
    public String showTaxForm(Model model) {
        model.addAttribute("income", new Income());
        return "tax";
    }

    @PostMapping("/calculateTax")
    public String calculateTax(@ModelAttribute Income income) {
        double tax = calculateTaxLogic(income);
        income.setTax(tax);

        taxService.saveIncome(income);

        return "redirect:/success";
    }

    private double calculateTaxLogic(Income income) {
        double taxableIncome = calculateTaxableIncome(income);

        if (taxableIncome <= 300000) {
            return 0.05 * taxableIncome;
        } else if (taxableIncome <= 400000) {
            return 0.1 * taxableIncome;
        } else if (taxableIncome <= 700000) {
            return 0.15 * taxableIncome;
        } else if (taxableIncome <= 1100000) {
            return 0.20 * taxableIncome;
        } else if (taxableIncome <= 1600000) {
            return 0.25 * taxableIncome;
        } else {
            return 0.30 * taxableIncome;
        }
    }

    private double calculateTaxableIncome(Income income) {
        double totalIncome = income.getBasicPay() + income.getHouseRentAllowance() +
                income.getConveyanceAllowance() + income.getMedicalAllowance() +
                income.getOtherAllowance();

        return totalIncome - income.getDeductionAmount();
    }
}
