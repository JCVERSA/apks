package com.facebook.ads.redexgen.core;

import android.graphics.drawable.ColorDrawable;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

public abstract class AbstractC1532bf {
    public static C5Q A00(final C1473ai c1473ai, int i, final String str, final FH fh) {
        if (i == 1) {
            return new C5Q(c1473ai, str, fh) {
                public static final int A00 = (int) (AbstractC1338Wl.A02 * 20.0f);
                public static final int A01 = (int) (AbstractC1338Wl.A02 * 16.0f);

                @Override
                public final boolean A02() {
                    return false;
                }

                @Override
                public final void A1V(C1635dL c1635dL) {
                    C1455aQ titleDescContainer = getTitleDescContainer();
                    titleDescContainer.setAlignment(3);
                    titleDescContainer.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                    titleDescContainer.setPadding(0, 0, 0, A00);
                    getCtaButton().setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
                    LinearLayout linearLayout = new LinearLayout(c1635dL);
                    XP.A0Q(linearLayout, new ColorDrawable(-1));
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.addRule(3, getMediaContainer().getId());
                    linearLayout.setLayoutParams(layoutParams);
                    linearLayout.setOrientation(1);
                    linearLayout.setPadding(A01, A01, A01, A01);
                    linearLayout.addView(titleDescContainer);
                    linearLayout.addView(getCtaButton());
                    addView(getMediaContainer());
                    addView(linearLayout);
                }
            };
        }
        return new C5Q(c1473ai, str, fh) {
            public static final int A00 = (int) (AbstractC1338Wl.A02 * 12.0f);

            @Override
            public final boolean A01() {
                return false;
            }

            @Override
            public final boolean A0C() {
                return false;
            }

            @Override
            public final void A1V(C1635dL c1635dL) {
                C1455aQ titleDescContainer = getTitleDescContainer();
                titleDescContainer.setAlignment(3);
                RelativeLayout.LayoutParams adTitleAndDescriptionLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
                adTitleAndDescriptionLayoutParams.addRule(8, getMediaContainer().getId());
                titleDescContainer.setLayoutParams(adTitleAndDescriptionLayoutParams);
                titleDescContainer.setPadding(A00, A00, A00, A00);
                XP.A0P(titleDescContainer, getAdContextWrapper());
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.addRule(3, getMediaContainer().getId());
                getCtaButton().setLayoutParams(layoutParams);
                addView(getMediaContainer());
                addView(titleDescContainer);
                addView(getCtaButton());
            }
        };
    }
}
