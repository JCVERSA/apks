package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.appcompat.R$id;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

class e0 extends g1.c implements View.OnClickListener {

    private final SearchView f1679l;

    private final SearchableInfo f1680m;

    private final Context f1681n;

    private final WeakHashMap f1682o;

    private final int f1683p;

    private boolean f1684q;

    private int f1685r;

    private ColorStateList f1686s;

    private int f1687t;

    private int f1688u;

    private int f1689v;

    private int f1690w;

    private int f1691x;

    private int f1692y;

    private static final class a {

        public final TextView f1693a;

        public final TextView f1694b;

        public final ImageView f1695c;

        public final ImageView f1696d;

        public final ImageView f1697e;

        public a(View view) {
            this.f1693a = (TextView) view.findViewById(R.id.text1);
            this.f1694b = (TextView) view.findViewById(R.id.text2);
            this.f1695c = (ImageView) view.findViewById(R.id.icon1);
            this.f1696d = (ImageView) view.findViewById(R.id.icon2);
            this.f1697e = (ImageView) view.findViewById(R$id.edit_query);
        }
    }

    public e0(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.f1684q = false;
        this.f1685r = 1;
        this.f1687t = -1;
        this.f1688u = -1;
        this.f1689v = -1;
        this.f1690w = -1;
        this.f1691x = -1;
        this.f1692y = -1;
        this.f1679l = searchView;
        this.f1680m = searchableInfo;
        this.f1683p = searchView.getSuggestionCommitIconResId();
        this.f1681n = context;
        this.f1682o = weakHashMap;
    }

    private void A(String str, Drawable drawable) {
        if (drawable != null) {
            this.f1682o.put(str, drawable.getConstantState());
        }
    }

    private void B(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean("in_progress");
        }
    }

    private Drawable k(String str) {
        Drawable.ConstantState constantState = (Drawable.ConstantState) this.f1682o.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private CharSequence l(CharSequence charSequence) {
        if (this.f1686s == null) {
            TypedValue typedValue = new TypedValue();
            this.f1681n.getTheme().resolveAttribute(R$attr.textColorSearchUrl, typedValue, true);
            this.f1686s = this.f1681n.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f1686s, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private Drawable m(ComponentName componentName) {
        PackageManager packageManager = this.f1681n.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("SuggestionsAdapter", e10.toString());
            return null;
        }
    }

    private Drawable n(ComponentName componentName) {
        String strFlattenToShortString = componentName.flattenToShortString();
        if (!this.f1682o.containsKey(strFlattenToShortString)) {
            Drawable drawableM = m(componentName);
            this.f1682o.put(strFlattenToShortString, drawableM != null ? drawableM.getConstantState() : null);
            return drawableM;
        }
        Drawable.ConstantState constantState = (Drawable.ConstantState) this.f1682o.get(strFlattenToShortString);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable(this.f1681n.getResources());
    }

    public static String o(Cursor cursor, String str) {
        return w(cursor, cursor.getColumnIndex(str));
    }

    private Drawable p() {
        Drawable drawableN = n(this.f1680m.getSearchActivity());
        return drawableN != null ? drawableN : this.f1681n.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable q(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return r(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream inputStreamOpenInputStream = this.f1681n.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            try {
                Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamOpenInputStream, null);
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException e10) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e10);
                }
                return drawableCreateFromStream;
            } catch (Throwable th2) {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException e11) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e11);
                }
                throw th2;
            }
        } catch (FileNotFoundException e12) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e12.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e12.getMessage());
        return null;
    }

    private Drawable s(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int i10 = Integer.parseInt(str);
            String str2 = "android.resource://" + this.f1681n.getPackageName() + "/" + i10;
            Drawable drawableK = k(str2);
            if (drawableK != null) {
                return drawableK;
            }
            Drawable drawable = androidx.core.content.b.getDrawable(this.f1681n, i10);
            A(str2, drawable);
            return drawable;
        } catch (Resources.NotFoundException unused) {
            Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable drawableK2 = k(str);
            if (drawableK2 != null) {
                return drawableK2;
            }
            Drawable drawableQ = q(Uri.parse(str));
            A(str, drawableQ);
            return drawableQ;
        }
    }

    private Drawable t(Cursor cursor) {
        int i10 = this.f1690w;
        if (i10 == -1) {
            return null;
        }
        Drawable drawableS = s(cursor.getString(i10));
        return drawableS != null ? drawableS : p();
    }

    private Drawable u(Cursor cursor) {
        int i10 = this.f1691x;
        if (i10 == -1) {
            return null;
        }
        return s(cursor.getString(i10));
    }

    private static String w(Cursor cursor, int i10) {
        if (i10 == -1) {
            return null;
        }
        try {
            return cursor.getString(i10);
        } catch (Exception e10) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e10);
            return null;
        }
    }

    private void y(ImageView imageView, Drawable drawable, int i10) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i10);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private void z(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    @Override
    public void a(Cursor cursor) {
        if (this.f1684q) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.f1687t = cursor.getColumnIndex("suggest_text_1");
                this.f1688u = cursor.getColumnIndex("suggest_text_2");
                this.f1689v = cursor.getColumnIndex("suggest_text_2_url");
                this.f1690w = cursor.getColumnIndex("suggest_icon_1");
                this.f1691x = cursor.getColumnIndex("suggest_icon_2");
                this.f1692y = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e10) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e10);
        }
    }

    @Override
    public CharSequence b(Cursor cursor) {
        String strO;
        String strO2;
        if (cursor == null) {
            return null;
        }
        String strO3 = o(cursor, "suggest_intent_query");
        if (strO3 != null) {
            return strO3;
        }
        if (this.f1680m.shouldRewriteQueryFromData() && (strO2 = o(cursor, "suggest_intent_data")) != null) {
            return strO2;
        }
        if (!this.f1680m.shouldRewriteQueryFromText() || (strO = o(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return strO;
    }

    @Override
    public Cursor c(CharSequence charSequence) {
        String string = charSequence == null ? "" : charSequence.toString();
        if (this.f1679l.getVisibility() == 0 && this.f1679l.getWindowVisibility() == 0) {
            try {
                Cursor cursorV = v(this.f1680m, string, 50);
                if (cursorV != null) {
                    cursorV.getCount();
                    return cursorV;
                }
            } catch (RuntimeException e10) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e10);
            }
        }
        return null;
    }

    @Override
    public void e(View view, Context context, Cursor cursor) {
        a aVar = (a) view.getTag();
        int i10 = this.f1692y;
        int i11 = i10 != -1 ? cursor.getInt(i10) : 0;
        if (aVar.f1693a != null) {
            z(aVar.f1693a, w(cursor, this.f1687t));
        }
        if (aVar.f1694b != null) {
            String strW = w(cursor, this.f1689v);
            CharSequence charSequenceL = strW != null ? l(strW) : w(cursor, this.f1688u);
            if (TextUtils.isEmpty(charSequenceL)) {
                TextView textView = aVar.f1693a;
                if (textView != null) {
                    textView.setSingleLine(false);
                    aVar.f1693a.setMaxLines(2);
                }
            } else {
                TextView textView2 = aVar.f1693a;
                if (textView2 != null) {
                    textView2.setSingleLine(true);
                    aVar.f1693a.setMaxLines(1);
                }
            }
            z(aVar.f1694b, charSequenceL);
        }
        ImageView imageView = aVar.f1695c;
        if (imageView != null) {
            y(imageView, t(cursor), 4);
        }
        ImageView imageView2 = aVar.f1696d;
        if (imageView2 != null) {
            y(imageView2, u(cursor), 8);
        }
        int i12 = this.f1685r;
        if (i12 != 2 && (i12 != 1 || (i11 & 1) == 0)) {
            aVar.f1697e.setVisibility(8);
            return;
        }
        aVar.f1697e.setVisibility(0);
        aVar.f1697e.setTag(aVar.f1693a.getText());
        aVar.f1697e.setOnClickListener(this);
    }

    @Override
    public View getDropDownView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e10);
            View viewG = g(this.f1681n, d(), viewGroup);
            if (viewG != null) {
                ((a) viewG.getTag()).f1693a.setText(e10.toString());
            }
            return viewG;
        }
    }

    @Override
    public View getView(int i10, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i10, view, viewGroup);
        } catch (RuntimeException e10) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e10);
            View viewH = h(this.f1681n, d(), viewGroup);
            if (viewH != null) {
                ((a) viewH.getTag()).f1693a.setText(e10.toString());
            }
            return viewH;
        }
    }

    @Override
    public View h(Context context, Cursor cursor, ViewGroup viewGroup) {
        View viewH = super.h(context, cursor, viewGroup);
        viewH.setTag(new a(viewH));
        ((ImageView) viewH.findViewById(R$id.edit_query)).setImageResource(this.f1683p);
        return viewH;
    }

    @Override
    public boolean hasStableIds() {
        return false;
    }

    @Override
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        B(d());
    }

    @Override
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        B(d());
    }

    @Override
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f1679l.v((CharSequence) tag);
        }
    }

    Drawable r(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f1681n.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException("More than two path segments: " + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException("No resource found for: " + uri);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    Cursor v(SearchableInfo searchableInfo, String str, int i10) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i10 > 0) {
            builderFragment.appendQueryParameter("limit", String.valueOf(i10));
        }
        return this.f1681n.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }

    public void x(int i10) {
        this.f1685r = i10;
    }
}
