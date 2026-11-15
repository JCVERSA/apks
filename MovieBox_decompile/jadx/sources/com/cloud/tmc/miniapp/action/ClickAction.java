package com.cloud.tmc.miniapp.action;

import android.view.View;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

public interface ClickAction extends View.OnClickListener {

    public static final class DefaultImpls {
        public static void onClick(ClickAction clickAction, View view) {
            Intrinsics.h(view, "view");
        }

        public static void setOnClickListener(ClickAction clickAction, int... ids) {
            Intrinsics.h(ids, "ids");
            clickAction.setOnClickListener(clickAction, Arrays.copyOf(ids, ids.length));
        }

        public static void setOnClickListener(ClickAction clickAction, View.OnClickListener onClickListener, int... ids) {
            Intrinsics.h(ids, "ids");
            for (int i10 : ids) {
                View viewFindViewById = clickAction.findViewById(i10);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(onClickListener);
                }
            }
        }

        public static void setOnClickListener(ClickAction clickAction, View... views) {
            Intrinsics.h(views, "views");
            clickAction.setOnClickListener(clickAction, (View[]) Arrays.copyOf(views, views.length));
        }

        public static void setOnClickListener(ClickAction clickAction, View.OnClickListener onClickListener, View... views) {
            Intrinsics.h(views, "views");
            for (View view : views) {
                if (view != null) {
                    view.setOnClickListener(onClickListener);
                }
            }
        }
    }

    <V extends View> V findViewById(int i10);

    @Override
    void onClick(View view);

    void setOnClickListener(View.OnClickListener onClickListener, int... iArr);

    void setOnClickListener(View.OnClickListener onClickListener, View... viewArr);

    void setOnClickListener(int... iArr);

    void setOnClickListener(View... viewArr);
}
