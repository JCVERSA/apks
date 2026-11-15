package com.hisavana.common.bean;

import com.hisavana.common.interfacz.WrapTAdAllianceListener;

public class TInnerAdRequestBody {
    private final WrapTAdAllianceListener innerAdListener;

    public static class Builder {
        private WrapTAdAllianceListener innerAdListener = null;

        public TInnerAdRequestBody build() {
            return new TInnerAdRequestBody(this);
        }

        public Builder setAdListener(WrapTAdAllianceListener wrapTAdAllianceListener) {
            this.innerAdListener = wrapTAdAllianceListener;
            return this;
        }
    }

    public WrapTAdAllianceListener getAdListener() {
        return this.innerAdListener;
    }

    private TInnerAdRequestBody(Builder builder) {
        this.innerAdListener = builder.innerAdListener;
    }
}
