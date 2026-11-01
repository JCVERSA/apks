package f1;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

public final class a extends MenuInflater {

    public final Context f779a;

    public a(Context context) {
        super(context);
        this.f779a = context;
    }

    public final void a(XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int i2;
        int i3;
        int i4;
        String str;
        int i5;
        Drawable drawable;
        Drawable drawableH;
        CharSequence charSequence;
        int i6;
        boolean z2;
        int i7;
        int eventType = xmlResourceParser.getEventType();
        do {
            i2 = 2;
            i3 = 1;
            if (eventType == 2) {
                String name = xmlResourceParser.getName();
                if (!name.equals("menu")) {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
                eventType = xmlResourceParser.next();
                break;
            }
            eventType = xmlResourceParser.next();
        } while (eventType != 1);
        String str2 = null;
        boolean z3 = false;
        boolean z4 = false;
        CharSequence text = null;
        int i8 = 0;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        Drawable drawable2 = null;
        int i9 = 0;
        int i10 = 0;
        CharSequence charSequence2 = null;
        boolean z9 = false;
        while (!z3) {
            if (eventType == i3) {
                throw new RuntimeException("Unexpected end of document");
            }
            boolean z10 = z3;
            if (eventType != i2) {
                if (eventType == 3) {
                    String name2 = xmlResourceParser.getName();
                    if (z8 && name2.equals(str2)) {
                        i4 = i9;
                        z3 = z10;
                        str2 = null;
                        z8 = false;
                    } else if (name2.equals("group")) {
                        i9 = 0;
                    } else {
                        if (!name2.equals("item")) {
                            drawableH = drawable2;
                            i6 = i10;
                            charSequence = charSequence2;
                            z2 = z9;
                            i7 = i9;
                            if (name2.equals("menu")) {
                                z9 = z2;
                                drawable2 = drawableH;
                                charSequence2 = charSequence;
                                i4 = i7;
                                z3 = true;
                                i10 = i6;
                            }
                        } else if (z5) {
                            drawableH = drawable2;
                            i6 = i10;
                            charSequence = charSequence2;
                            i7 = i9;
                            z2 = z9;
                        } else {
                            int i11 = i9;
                            i6 = i10;
                            charSequence = charSequence2;
                            MenuItem menuItemAdd = menu.add(i11, i6, 0, charSequence);
                            boolean z11 = z9;
                            i7 = i11;
                            drawableH = drawable2;
                            menuItemAdd.setChecked(z11).setVisible(z4).setEnabled(z6).setCheckable(z7).setTitleCondensed(text).setIcon(drawableH);
                            if (i8 >= 0) {
                                menuItemAdd.setShowAsAction(i8);
                            }
                            z2 = z11;
                            z5 = true;
                        }
                        z9 = z2;
                        str = str2;
                        i5 = i8;
                        i4 = i7;
                        i10 = i6;
                        str2 = str;
                        i8 = i5;
                        drawable2 = drawableH;
                        charSequence2 = charSequence;
                        z3 = z10;
                    }
                }
                drawableH = drawable2;
                i4 = i9;
                charSequence = charSequence2;
                str = str2;
                i5 = i8;
                str2 = str;
                i8 = i5;
                drawable2 = drawableH;
                charSequence2 = charSequence;
                z3 = z10;
            } else {
                Drawable drawable3 = drawable2;
                i4 = i9;
                boolean z12 = z9;
                str = str2;
                int i12 = i10;
                boolean z13 = z5;
                CharSequence charSequence3 = charSequence2;
                i5 = i8;
                if (z8) {
                    drawable = drawable3;
                } else {
                    String name3 = xmlResourceParser.getName();
                    boolean zEquals = name3.equals("item");
                    drawable = drawable3;
                    Context context = this.f779a;
                    if (zEquals) {
                        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.icon, R.attr.enabled, R.attr.id, R.attr.checked, R.attr.visible, R.attr.title, R.attr.titleCondensed, R.attr.checkable, R.attr.showAsAction});
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                        drawableH = resourceId != 0 ? z0.c.h(context, resourceId) : drawable;
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(2, 0);
                        CharSequence text2 = typedArrayObtainStyledAttributes.getText(5);
                        text = typedArrayObtainStyledAttributes.getText(6);
                        boolean z14 = typedArrayObtainStyledAttributes.hasValue(7) ? typedArrayObtainStyledAttributes.getBoolean(7, false) : false;
                        boolean z15 = typedArrayObtainStyledAttributes.getBoolean(3, false);
                        boolean z16 = typedArrayObtainStyledAttributes.getBoolean(4, true);
                        boolean z17 = typedArrayObtainStyledAttributes.getBoolean(1, true);
                        int i13 = typedArrayObtainStyledAttributes.getInt(8, -1);
                        typedArrayObtainStyledAttributes.recycle();
                        i10 = resourceId2;
                        i5 = i13;
                        charSequence = text2;
                        z9 = z15;
                        z6 = z17;
                        z5 = false;
                        z4 = z16;
                        z7 = z14;
                        str2 = str;
                        i8 = i5;
                        drawable2 = drawableH;
                        charSequence2 = charSequence;
                        z3 = z10;
                    } else if (name3.equals("group")) {
                        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, new int[]{R.attr.id});
                        int resourceId3 = typedArrayObtainStyledAttributes2.getResourceId(0, 0);
                        typedArrayObtainStyledAttributes2.recycle();
                        i4 = resourceId3;
                    } else if (name3.equals("menu")) {
                        SubMenu subMenuAddSubMenu = menu.addSubMenu(i4, i12, 0, charSequence3);
                        MenuItem item = subMenuAddSubMenu.getItem();
                        item.setChecked(z12).setVisible(z4).setEnabled(z6).setCheckable(z7).setTitleCondensed(text).setIcon(drawable);
                        if (i5 >= 0) {
                            item.setShowAsAction(i5);
                        }
                        a(xmlResourceParser, attributeSet, subMenuAddSubMenu);
                        z9 = z12;
                        i5 = i5;
                        i10 = i12;
                        drawableH = drawable;
                        charSequence = charSequence3;
                        z5 = true;
                        str2 = str;
                        i8 = i5;
                        drawable2 = drawableH;
                        charSequence2 = charSequence;
                        z3 = z10;
                    } else {
                        z9 = z12;
                        drawable2 = drawable;
                        charSequence2 = charSequence3;
                        z5 = z13;
                        z3 = z10;
                        z8 = true;
                        i10 = i12;
                        str2 = name3;
                        i8 = i5;
                    }
                }
                z9 = z12;
                charSequence = charSequence3;
                z5 = z13;
                drawableH = drawable;
                i10 = i12;
                str2 = str;
                i8 = i5;
                drawable2 = drawableH;
                charSequence2 = charSequence;
                z3 = z10;
            }
            i9 = i4;
            eventType = xmlResourceParser.next();
            i2 = 2;
            i3 = 1;
        }
    }

    @Override
    public final void inflate(int i2, Menu menu) {
        XmlResourceParser layout = null;
        try {
            try {
                layout = this.f779a.getResources().getLayout(i2);
                a(layout, Xml.asAttributeSet(layout), menu);
                layout.close();
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
