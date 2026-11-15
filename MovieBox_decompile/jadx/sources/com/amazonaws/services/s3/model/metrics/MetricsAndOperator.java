package com.amazonaws.services.s3.model.metrics;

import java.util.List;

public final class MetricsAndOperator extends MetricsNAryOperator {
    public MetricsAndOperator(List<MetricsFilterPredicate> list) {
        super(list);
    }

    @Override
    public void accept(MetricsPredicateVisitor metricsPredicateVisitor) {
        metricsPredicateVisitor.a(this);
    }

    @Override
    public List getOperands() {
        return super.getOperands();
    }
}
