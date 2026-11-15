package io.github.inflationx.viewpump;

import android.view.View;

class FallbackViewCreationInterceptor implements Interceptor {
    @Override
    public InflateResult intercept(Interceptor.Chain chain) {
        InflateRequest inflateRequestRequest = chain.request();
        View viewOnCreateView = inflateRequestRequest.fallbackViewCreator().onCreateView(inflateRequestRequest.parent(), inflateRequestRequest.name(), inflateRequestRequest.context(), inflateRequestRequest.attrs());
        return InflateResult.builder().view(viewOnCreateView).name(viewOnCreateView != null ? viewOnCreateView.getClass().getName() : inflateRequestRequest.name()).context(inflateRequestRequest.context()).attrs(inflateRequestRequest.attrs()).build();
    }
}
