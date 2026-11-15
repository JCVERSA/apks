package com.cloud.tmc.miniapp.action;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.core.content.b;
import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

public interface ResourcesAction {

    public static final class DefaultImpls {
        public static int getColor(ResourcesAction resourcesAction, int i10) {
            return b.getColor(resourcesAction.getContext(), i10);
        }

        public static Drawable getDrawable(ResourcesAction resourcesAction, int i10) {
            return b.getDrawable(resourcesAction.getContext(), i10);
        }

        public static Resources getResources(ResourcesAction resourcesAction) {
            Resources resources = resourcesAction.getContext().getResources();
            Intrinsics.g(resources, "getContext().resources");
            return resources;
        }

        public static String getString(ResourcesAction resourcesAction, int i10) {
            return resourcesAction.getContext().getString(i10);
        }

        public static <S> S getSystemService(ResourcesAction resourcesAction, Class<S> serviceClass) {
            Intrinsics.h(serviceClass, "serviceClass");
            S s10 = (S) b.getSystemService(resourcesAction.getContext(), serviceClass);
            Intrinsics.e(s10);
            return s10;
        }

        public static String getString(ResourcesAction resourcesAction, int i10, Object... formatArgs) {
            Intrinsics.h(formatArgs, "formatArgs");
            return resourcesAction.getResources().getString(i10, Arrays.copyOf(formatArgs, formatArgs.length));
        }
    }

    int getColor(int i10);

    Context getContext();

    Drawable getDrawable(int i10);

    Resources getResources();

    String getString(int i10);

    String getString(int i10, Object... objArr);

    <S> S getSystemService(Class<S> cls);
}
