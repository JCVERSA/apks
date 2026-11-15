package defpackage;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.content.res.loader.ResourcesLoader;
import android.graphics.Movie;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParserException;

public abstract class eu8 extends Resources {
    public final Resources a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public eu8(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        y45.j(resources, "resources");
        this.a = resources;
    }

    @Override
    public void addLoaders(ResourcesLoader... resourcesLoaderArr) {
        y45.j(resourcesLoaderArr, "loaders");
        this.a.addLoaders((ResourcesLoader[]) Arrays.copyOf(resourcesLoaderArr, resourcesLoaderArr.length));
    }

    @Override
    public XmlResourceParser getAnimation(int i) {
        XmlResourceParser animation = this.a.getAnimation(i);
        y45.i(animation, "resources.getAnimation(id)");
        return animation;
    }

    @Override
    public int getColor(int i) {
        return this.a.getColor(i);
    }

    @Override
    public ColorStateList getColorStateList(int i, Resources.Theme theme) {
        ColorStateList colorStateList = this.a.getColorStateList(i, theme);
        y45.i(colorStateList, "resources.getColorStateList(id, theme)");
        return colorStateList;
    }

    @Override
    public Configuration getConfiguration() {
        return this.a.getConfiguration();
    }

    @Override
    public DisplayMetrics getDisplayMetrics() {
        return this.a.getDisplayMetrics();
    }

    @Override
    public Drawable getDrawable(int i, Resources.Theme theme) {
        return this.a.getDrawable(i, theme);
    }

    @Override
    public Drawable getDrawableForDensity(int i, int i2) {
        return this.a.getDrawableForDensity(i, i2);
    }

    @Override
    public float getFloat(int i) {
        return this.a.getFloat(i);
    }

    @Override
    public Typeface getFont(int i) {
        Typeface font = this.a.getFont(i);
        y45.i(font, "resources.getFont(id)");
        return font;
    }

    @Override
    public float getFraction(int i, int i2, int i3) {
        return this.a.getFraction(i, i2, i3);
    }

    @Override
    public int getIdentifier(String str, String str2, String str3) {
        return this.a.getIdentifier(str, str2, str3);
    }

    @Override
    public int[] getIntArray(int i) {
        int[] intArray = this.a.getIntArray(i);
        y45.i(intArray, "resources.getIntArray(id)");
        return intArray;
    }

    @Override
    public XmlResourceParser getLayout(int i) {
        XmlResourceParser layout = this.a.getLayout(i);
        y45.i(layout, "resources.getLayout(id)");
        return layout;
    }

    @Override
    public Movie getMovie(int i) {
        return this.a.getMovie(i);
    }

    @Override
    public String getQuantityString(int i, int i2, Object... objArr) {
        y45.j(objArr, "formatArgs");
        String quantityString = this.a.getQuantityString(i, i2, Arrays.copyOf(objArr, objArr.length));
        y45.i(quantityString, "resources.getQuantityStr…d, quantity, *formatArgs)");
        return quantityString;
    }

    @Override
    public CharSequence getQuantityText(int i, int i2) {
        CharSequence quantityText = this.a.getQuantityText(i, i2);
        y45.i(quantityText, "resources.getQuantityText(id, quantity)");
        return quantityText;
    }

    @Override
    public String getResourceEntryName(int i) {
        return this.a.getResourceEntryName(i);
    }

    @Override
    public String getResourceName(int i) {
        return this.a.getResourceName(i);
    }

    @Override
    public String getResourcePackageName(int i) {
        return this.a.getResourcePackageName(i);
    }

    @Override
    public String getResourceTypeName(int i) {
        return this.a.getResourceTypeName(i);
    }

    @Override
    public String getString(int i, Object... objArr) {
        y45.j(objArr, "formatArgs");
        String string = this.a.getString(i, Arrays.copyOf(objArr, objArr.length));
        y45.i(string, "resources.getString(id, *formatArgs)");
        return string;
    }

    @Override
    public String[] getStringArray(int i) {
        String[] stringArray = this.a.getStringArray(i);
        y45.i(stringArray, "resources.getStringArray(id)");
        return stringArray;
    }

    @Override
    public CharSequence getText(int i, CharSequence charSequence) {
        return this.a.getText(i, charSequence);
    }

    @Override
    public CharSequence[] getTextArray(int i) {
        CharSequence[] textArray = this.a.getTextArray(i);
        y45.i(textArray, "resources.getTextArray(id)");
        return textArray;
    }

    @Override
    public void getValue(String str, TypedValue typedValue, boolean z) {
        this.a.getValue(str, typedValue, z);
    }

    @Override
    public void getValueForDensity(int i, int i2, TypedValue typedValue, boolean z) {
        this.a.getValueForDensity(i, i2, typedValue, z);
    }

    @Override
    public XmlResourceParser getXml(int i) {
        XmlResourceParser xml = this.a.getXml(i);
        y45.i(xml, "resources.getXml(id)");
        return xml;
    }

    @Override
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.a.obtainAttributes(attributeSet, iArr);
    }

    @Override
    public TypedArray obtainTypedArray(int i) {
        TypedArray typedArrayObtainTypedArray = this.a.obtainTypedArray(i);
        y45.i(typedArrayObtainTypedArray, "resources.obtainTypedArray(id)");
        return typedArrayObtainTypedArray;
    }

    @Override
    public InputStream openRawResource(int i, TypedValue typedValue) {
        InputStream inputStreamOpenRawResource = this.a.openRawResource(i, typedValue);
        y45.i(inputStreamOpenRawResource, "resources.openRawResource(id, value)");
        return inputStreamOpenRawResource;
    }

    @Override
    public AssetFileDescriptor openRawResourceFd(int i) {
        return this.a.openRawResourceFd(i);
    }

    @Override
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        this.a.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        this.a.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override
    public void removeLoaders(ResourcesLoader... resourcesLoaderArr) {
        y45.j(resourcesLoaderArr, "loaders");
        this.a.removeLoaders((ResourcesLoader[]) Arrays.copyOf(resourcesLoaderArr, resourcesLoaderArr.length));
    }

    @Override
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        Resources resources = this.a;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    @Override
    public int getColor(int i, Resources.Theme theme) {
        return this.a.getColor(i, theme);
    }

    @Override
    public ColorStateList getColorStateList(int i) {
        ColorStateList colorStateList = this.a.getColorStateList(i);
        y45.i(colorStateList, "resources.getColorStateList(id)");
        return colorStateList;
    }

    @Override
    public Drawable getDrawable(int i) {
        return this.a.getDrawable(i);
    }

    @Override
    public Drawable getDrawableForDensity(int i, int i2, Resources.Theme theme) {
        return this.a.getDrawableForDensity(i, i2, theme);
    }

    @Override
    public String getQuantityString(int i, int i2) {
        String quantityString = this.a.getQuantityString(i, i2);
        y45.i(quantityString, "resources.getQuantityString(id, quantity)");
        return quantityString;
    }

    @Override
    public String getString(int i) {
        String string = this.a.getString(i);
        y45.i(string, "resources.getString(id)");
        return string;
    }

    @Override
    public CharSequence getText(int i) {
        CharSequence text = this.a.getText(i);
        y45.i(text, "resources.getText(id)");
        return text;
    }

    @Override
    public void getValue(int i, TypedValue typedValue, boolean z) {
        this.a.getValue(i, typedValue, z);
    }

    @Override
    public InputStream openRawResource(int i) {
        InputStream inputStreamOpenRawResource = this.a.openRawResource(i);
        y45.i(inputStreamOpenRawResource, "resources.openRawResource(id)");
        return inputStreamOpenRawResource;
    }
}
