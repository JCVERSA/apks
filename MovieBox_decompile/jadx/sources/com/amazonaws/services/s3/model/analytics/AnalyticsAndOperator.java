package com.amazonaws.services.s3.model.analytics;

import java.util.List;

public class AnalyticsAndOperator extends AnalyticsNAryOperator {
    public AnalyticsAndOperator(List<AnalyticsFilterPredicate> list) {
        super(list);
    }

    @Override
    public void accept(AnalyticsPredicateVisitor analyticsPredicateVisitor) {
        analyticsPredicateVisitor.c(this);
    }

    @Override
    public List getOperands() {
        return super.getOperands();
    }
}
