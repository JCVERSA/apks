package androidx.appcompat.widget;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;

abstract class c0 extends Resources {

    private final Resources f1658a;

    public c0(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1658a = resources;
    }

    final Drawable a(int i10) {
        return super.getDrawable(i10);
    }

    @Override
    public XmlResourceParser getAnimation(int i10) {
        return this.f1658a.getAnimation(i10);
    }

    @Override
    public boolean getBoolean(int i10) {
        return this.f1658a.getBoolean(i10);
    }

    @Override
    public int getColor(int i10) {
        return this.f1658a.getColor(i10);
    }

    @Override
    public ColorStateList getColorStateList(int i10) {
        return this.f1658a.getColorStateList(i10);
    }

    @Override
    public Configuration getConfiguration() {
        return this.f1658a.getConfiguration();
    }

    @Override
    public float getDimension(int i10) {
        return this.f1658a.getDimension(i10);
    }

    @Override
    public int getDimensionPixelOffset(int i10) {
        return this.f1658a.getDimensionPixelOffset(i10);
    }

    @Override
    public int getDimensionPixelSize(int i10) {
        return this.f1658a.getDimensionPixelSize(i10);
    }

    @Override
    public DisplayMetrics getDisplayMetrics() {
        return this.f1658a.getDisplayMetrics();
    }

    @Override
    public Drawable getDrawable(int i10, Resources.Theme theme) {
        return y0.h.e(this.f1658a, i10, theme);
    }

    @Override
    public Drawable getDrawableForDensity(int i10, int i11) {
        return y0.h.f(this.f1658a, i10, i11, null);
    }

    @Override
    public float getFraction(int i10, int i11, int i12) {
        return this.f1658a.getFraction(i10, i11, i12);
    }

    @Override
    public int getIdentifier(String str, String str2, String str3) {
        return this.f1658a.getIdentifier(str, str2, str3);
    }

    @Override
    public int[] getIntArray(int i10) {
        return this.f1658a.getIntArray(i10);
    }

    @Override
    public int getInteger(int i10) {
        return this.f1658a.getInteger(i10);
    }

    @Override
    public XmlResourceParser getLayout(int i10) {
        return this.f1658a.getLayout(i10);
    }

    @Override
    public Movie getMovie(int i10) {
        return this.f1658a.getMovie(i10);
    }

    @Override
    public String getQuantityString(int i10, int i11, Object... objArr) {
        return this.f1658a.getQuantityString(i10, i11, objArr);
    }

    @Override
    public CharSequence getQuantityText(int i10, int i11) {
        return this.f1658a.getQuantityText(i10, i11);
    }

    @Override
    public String getResourceEntryName(int i10) {
        return this.f1658a.getResourceEntryName(i10);
    }

    @Override
    public String getResourceName(int i10) {
        return this.f1658a.getResourceName(i10);
    }

    @Override
    public String getResourcePackageName(int i10) {
        return this.f1658a.getResourcePackageName(i10);
    }

    @Override
    public String getResourceTypeName(int i10) {
        return this.f1658a.getResourceTypeName(i10);
    }

    @Override
    public String getString(int i10) {
        return this.f1658a.getString(i10);
    }

    @Override
    public String[] getStringArray(int i10) {
        return this.f1658a.getStringArray(i10);
    }

    @Override
    public CharSequence getText(int i10) {
        return this.f1658a.getText(i10);
    }

    @Override
    public CharSequence[] getTextArray(int i10) {
        return this.f1658a.getTextArray(i10);
    }

    @Override
    public void getValue(int i10, TypedValue typedValue, boolean z10) {
        this.f1658a.getValue(i10, typedValue, z10);
    }

    @Override
    public void getValueForDensity(int i10, int i11, TypedValue typedValue, boolean z10) {
        this.f1658a.getValueForDensity(i10, i11, typedValue, z10);
    }

    @Override
    public XmlResourceParser getXml(int i10) {
        return this.f1658a.getXml(i10);
    }

    @Override
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.f1658a.obtainAttributes(attributeSet, iArr);
    }

    @Override
    public TypedArray obtainTypedArray(int i10) {
        return this.f1658a.obtainTypedArray(i10);
    }

    @Override
    public InputStream openRawResource(int i10) {
        return this.f1658a.openRawResource(i10);
    }

    @Override
    public AssetFileDescriptor openRawResourceFd(int i10) {
        return this.f1658a.openRawResourceFd(i10);
    }

    @Override
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        this.f1658a.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        this.f1658a.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        Resources resources = this.f1658a;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    @Override
    public Drawable getDrawableForDensity(int i10, int i11, Resources.Theme theme) {
        return y0.h.f(this.f1658a, i10, i11, theme);
    }

    @Override
    public String getQuantityString(int i10, int i11) {
        return this.f1658a.getQuantityString(i10, i11);
    }

    @Override
    public String getString(int i10, Object... objArr) {
        return this.f1658a.getString(i10, objArr);
    }

    @Override
    public CharSequence getText(int i10, CharSequence charSequence) {
        return this.f1658a.getText(i10, charSequence);
    }

    @Override
    public void getValue(String str, TypedValue typedValue, boolean z10) {
        this.f1658a.getValue(str, typedValue, z10);
    }

    @Override
    public InputStream openRawResource(int i10, TypedValue typedValue) {
        return this.f1658a.openRawResource(i10, typedValue);
    }
}
