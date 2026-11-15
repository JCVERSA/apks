package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

public final class pe {
    private static final RectF j = new RectF();

    @SuppressLint({"BanConcurrentHashMap"})
    private static ConcurrentHashMap<String, Method> k = new ConcurrentHashMap<>();

    @SuppressLint({"BanConcurrentHashMap"})
    private static ConcurrentHashMap<String, Field> l = new ConcurrentHashMap<>();
    private TextPaint f;

    @NonNull
    private final TextView g;
    private final Context h;
    private int a = 0;
    private boolean b = false;
    private float c = -1.0f;
    private float d = -1.0f;
    private int[] e = new int[0];
    private final c i = new b();

    @RequiresApi(23)
    public static class a extends c {
        @Override
        public void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) pe.a((Object) textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    @RequiresApi(29)
    public static class b extends a {
        @Override
        public final void a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override
        public final boolean a(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    public static class c {
        public void a(StaticLayout.Builder builder, TextView textView) {
        }

        public boolean a(TextView textView) {
            return ((Boolean) pe.a((Object) textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    public pe(@NonNull TextView textView) {
        this.g = textView;
        this.h = textView.getContext();
    }

    private static Object a(@NonNull TextView textView, @NonNull String str, @NonNull Object obj) {
        try {
            Field fieldA = a(str);
            return fieldA == null ? obj : fieldA.get(textView);
        } catch (IllegalAccessException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return obj;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final boolean b() {
        return ((this.g instanceof EditText) || this.a == 0) ? false : true;
    }

    @Nullable
    private static Method b(@NonNull String str) {
        try {
            ConcurrentHashMap<String, Method> concurrentHashMap = k;
            Method declaredMethod = concurrentHashMap.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, null)) != null) {
                declaredMethod.setAccessible(true);
                concurrentHashMap.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e);
            return null;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final void a() {
        if (b()) {
            if (this.b) {
                if (this.g.getMeasuredHeight() <= 0 || this.g.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.i.a(this.g) ? 1048576 : (this.g.getMeasuredWidth() - this.g.getTotalPaddingLeft()) - this.g.getTotalPaddingRight();
                int height = (this.g.getHeight() - this.g.getCompoundPaddingBottom()) - this.g.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = j;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float fA = a(rectF);
                        if (fA != this.g.getTextSize()) {
                            a(0, fA);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            this.b = true;
        }
    }

    private int a(RectF rectF) {
        CharSequence transformation;
        int length = this.e.length;
        if (length != 0) {
            int i = length - 1;
            int i2 = 1;
            int i3 = 0;
            while (i2 <= i) {
                int i4 = (i2 + i) / 2;
                int i5 = this.e[i4];
                CharSequence text = this.g.getText();
                TransformationMethod transformationMethod = this.g.getTransformationMethod();
                if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.g)) != null) {
                    text = transformation;
                }
                int maxLines = this.g.getMaxLines();
                TextPaint textPaint = this.f;
                if (textPaint == null) {
                    this.f = new TextPaint();
                } else {
                    textPaint.reset();
                }
                this.f.set(this.g.getPaint());
                this.f.setTextSize(i5);
                Layout.Alignment alignment = (Layout.Alignment) a((Object) this.g, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL);
                StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(text, 0, text.length(), this.f, Math.round(rectF.right));
                builderObtain.setAlignment(alignment).setLineSpacing(this.g.getLineSpacingExtra(), this.g.getLineSpacingMultiplier()).setIncludePad(this.g.getIncludeFontPadding()).setBreakStrategy(this.g.getBreakStrategy()).setHyphenationFrequency(this.g.getHyphenationFrequency()).setMaxLines(maxLines == -1 ? Integer.MAX_VALUE : maxLines);
                try {
                    this.i.a(builderObtain, this.g);
                } catch (ClassCastException unused) {
                    Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
                }
                StaticLayout staticLayoutBuild = builderObtain.build();
                if ((maxLines == -1 || (staticLayoutBuild.getLineCount() <= maxLines && staticLayoutBuild.getLineEnd(staticLayoutBuild.getLineCount() - 1) == text.length())) && staticLayoutBuild.getHeight() <= rectF.bottom) {
                    int i6 = i4 + 1;
                    i3 = i2;
                    i2 = i6;
                } else {
                    i3 = i4 - 1;
                    i = i3;
                }
            }
            return this.e[i3];
        }
        throw new IllegalStateException("No available text sizes to choose from.");
    }

    public static <T> T a(@NonNull Object obj, @NonNull String str, @NonNull T t) {
        try {
            return (T) b(str).invoke(obj, null);
        } catch (Exception e) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e);
            return t;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final void a(int i) {
        if (this.g instanceof EditText) {
            return;
        }
        if (i == 0) {
            this.a = 0;
            this.d = -1.0f;
            this.c = -1.0f;
            this.e = new int[0];
            this.b = false;
            return;
        }
        if (i == 1) {
            DisplayMetrics displayMetrics = this.h.getResources().getDisplayMetrics();
            float fApplyDimension = TypedValue.applyDimension(2, 12.0f, displayMetrics);
            float fApplyDimension2 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
            if (fApplyDimension <= 0.0f) {
                throw new IllegalArgumentException("Minimum auto-size text size (" + fApplyDimension + "px) is less or equal to (0px)");
            }
            if (fApplyDimension2 > fApplyDimension) {
                this.a = 1;
                this.d = fApplyDimension;
                this.c = 1.0f;
                if (!(this.g instanceof EditText)) {
                    int iFloor = ((int) Math.floor((fApplyDimension2 - fApplyDimension) / 1.0f)) + 1;
                    int[] iArr = new int[iFloor];
                    for (int i2 = 0; i2 < iFloor; i2++) {
                        iArr[i2] = Math.round((i2 * this.c) + this.d);
                    }
                    if (iFloor != 0) {
                        Arrays.sort(iArr);
                        ArrayList arrayList = new ArrayList();
                        for (int i3 = 0; i3 < iFloor; i3++) {
                            int i4 = iArr[i3];
                            if (i4 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i4)) < 0) {
                                arrayList.add(Integer.valueOf(i4));
                            }
                        }
                        if (iFloor != arrayList.size()) {
                            int size = arrayList.size();
                            iArr = new int[size];
                            for (int i5 = 0; i5 < size; i5++) {
                                iArr[i5] = ((Integer) arrayList.get(i5)).intValue();
                            }
                        }
                    }
                    this.e = iArr;
                    this.b = true;
                } else {
                    this.b = false;
                }
                if (this.b) {
                    a();
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Maximum auto-size text size (" + fApplyDimension2 + "px) is less or equal to minimum auto-size text size (" + fApplyDimension + "px)");
        }
        throw new IllegalArgumentException(oe.a("Unknown auto-size text type: ", i));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final void a(int i, float f) {
        Resources resources;
        Context context = this.h;
        if (context == null) {
            resources = Resources.getSystem();
        } else {
            resources = context.getResources();
        }
        float fApplyDimension = TypedValue.applyDimension(i, f, resources.getDisplayMetrics());
        if (fApplyDimension != this.g.getPaint().getTextSize()) {
            this.g.getPaint().setTextSize(fApplyDimension);
            boolean zIsInLayout = this.g.isInLayout();
            if (this.g.getLayout() != null) {
                this.b = false;
                try {
                    Method methodB = b("nullLayouts");
                    if (methodB != null) {
                        methodB.invoke(this.g, null);
                    }
                } catch (Exception e) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e);
                }
                if (!zIsInLayout) {
                    this.g.requestLayout();
                } else {
                    this.g.forceLayout();
                }
                this.g.invalidate();
            }
        }
    }

    @Nullable
    private static Field a(@NonNull String str) {
        try {
            ConcurrentHashMap<String, Field> concurrentHashMap = l;
            Field declaredField = concurrentHashMap.get(str);
            if (declaredField == null && (declaredField = TextView.class.getDeclaredField(str)) != null) {
                declaredField.setAccessible(true);
                concurrentHashMap.put(str, declaredField);
            }
            return declaredField;
        } catch (NoSuchFieldException e) {
            Log.w("ACTVAutoSizeHelper", "Failed to access TextView#" + str + " member", e);
            return null;
        }
    }
}
