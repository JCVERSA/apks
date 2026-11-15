package androidx.browser.browseractions;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.browser.R;
import androidx.core.content.res.ResourcesCompat;
import defpackage.im5;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

@Deprecated
class BrowserActionsFallbackMenuAdapter extends BaseAdapter {
    private final Context mContext;
    private final List<BrowserActionItem> mMenuItems;

    public static class ViewHolderItem {
        final ImageView mIcon;
        final TextView mText;

        public ViewHolderItem(ImageView imageView, TextView textView) {
            this.mIcon = imageView;
            this.mText = textView;
        }
    }

    public BrowserActionsFallbackMenuAdapter(List<BrowserActionItem> list, Context context) {
        this.mMenuItems = list;
        this.mContext = context;
    }

    @Override
    public int getCount() {
        return this.mMenuItems.size();
    }

    @Override
    public Object getItem(int i) {
        return this.mMenuItems.get(i);
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        final ViewHolderItem viewHolderItem;
        BrowserActionItem browserActionItem = this.mMenuItems.get(i);
        if (view == null) {
            view = LayoutInflater.from(this.mContext).inflate(R.layout.browser_actions_context_menu_row, (ViewGroup) null);
            ImageView imageView = (ImageView) view.findViewById(R.id.browser_actions_menu_item_icon);
            TextView textView = (TextView) view.findViewById(R.id.browser_actions_menu_item_text);
            if (imageView == null || textView == null) {
                throw new IllegalStateException("Browser Actions fallback UI does not contain necessary Views.");
            }
            viewHolderItem = new ViewHolderItem(imageView, textView);
            view.setTag(viewHolderItem);
        } else {
            viewHolderItem = (ViewHolderItem) view.getTag();
        }
        final String title = browserActionItem.getTitle();
        viewHolderItem.mText.setText(title);
        if (browserActionItem.getIconId() != 0) {
            viewHolderItem.mIcon.setImageDrawable(ResourcesCompat.getDrawable(this.mContext.getResources(), browserActionItem.getIconId(), null));
        } else if (browserActionItem.getIconUri() != null) {
            final im5 im5VarLoadBitmap = BrowserServiceFileProvider.loadBitmap(this.mContext.getContentResolver(), browserActionItem.getIconUri());
            im5VarLoadBitmap.addListener(new Runnable() {
                @Override
                public void run() {
                    Bitmap bitmap;
                    if (TextUtils.equals(title, viewHolderItem.mText.getText())) {
                        try {
                            bitmap = (Bitmap) im5VarLoadBitmap.get();
                        } catch (InterruptedException | ExecutionException unused) {
                            bitmap = null;
                        }
                        if (bitmap != null) {
                            viewHolderItem.mIcon.setVisibility(0);
                            viewHolderItem.mIcon.setImageBitmap(bitmap);
                        } else {
                            viewHolderItem.mIcon.setVisibility(4);
                            viewHolderItem.mIcon.setImageBitmap(null);
                        }
                    }
                }
            }, new Executor() {
                @Override
                public void execute(@NonNull Runnable runnable) {
                    runnable.run();
                }
            });
        } else {
            viewHolderItem.mIcon.setImageBitmap(null);
            viewHolderItem.mIcon.setVisibility(4);
        }
        return view;
    }
}
