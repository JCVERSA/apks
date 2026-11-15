package com.amazonaws.services.s3.model.metrics;

public interface MetricsPredicateVisitor {
    void a(MetricsAndOperator metricsAndOperator);

    void b(MetricsTagPredicate metricsTagPredicate);

    void c(MetricsPrefixPredicate metricsPrefixPredicate);
}
