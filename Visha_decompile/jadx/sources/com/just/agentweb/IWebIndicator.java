package com.just.agentweb;

import com.just.agentweb.BaseIndicatorSpec;

public interface IWebIndicator<T extends BaseIndicatorSpec> {
    T offer();
}
