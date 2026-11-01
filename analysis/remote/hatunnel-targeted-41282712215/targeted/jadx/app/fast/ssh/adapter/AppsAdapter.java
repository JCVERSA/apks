package app.fast.ssh.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import app.fast.ssh.ProtectedFastSSH;
import com.hatunnel.plus.R;
import java.util.List;

public class AppsAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final List<App> appList;
    private final Context context;

    class AnonymousClass1 implements View.OnClickListener {
        final App val$app;

        AnonymousClass1(App app2) {
            this.val$app = app2;
        }

        @Override
        public void onClick(View view) {
            String str = String.format(ProtectedFastSSH.s("⿀"), this.val$app.packageName);
            Intent intent = new Intent(ProtectedFastSSH.s("⿁"));
            intent.setData(Uri.parse(str));
            AppsAdapter.access$300(AppsAdapter.this).startActivity(intent);
        }
    }

    public static class App {
        public final Drawable appIcon;
        public final String appName;
        public final String packageName;

        public App(Drawable drawable, String str, String str2) {
            this.appIcon = drawable;
            this.appName = str;
            this.packageName = str2;
        }
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        private ImageView app_icon;
        private TextView app_name;
        private TextView app_package;
        private View parent;

        public ViewHolder(View view) {
            super(view);
            this.parent = view.findViewById(R.id.l_res_0x7f0901d4);
            this.app_icon = (ImageView) view.findViewById(R.id.l_res_0x7f090057);
            this.app_name = (TextView) view.findViewById(R.id.l_res_0x7f090058);
            this.app_package = (TextView) view.findViewById(R.id.l_res_0x7f090059);
        }

        static ImageView access$000(ViewHolder viewHolder) {
            return viewHolder.app_icon;
        }

        static TextView access$100(ViewHolder viewHolder) {
            return viewHolder.app_name;
        }

        static TextView access$200(ViewHolder viewHolder) {
            return viewHolder.app_package;
        }

        static View access$400(ViewHolder viewHolder) {
            return viewHolder.parent;
        }
    }

    public AppsAdapter(Context context, List<App> list) {
        this.context = context;
        this.appList = list;
    }

    static Context access$300(AppsAdapter appsAdapter) {
        return appsAdapter.context;
    }

    private static void greyOut(ImageView imageView, boolean z) {
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
        if (!z) {
            colorMatrixColorFilter = null;
        }
        imageView.setColorFilter(colorMatrixColorFilter);
    }

    @Override
    public int getItemCount() {
        return this.appList.size();
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        onBindViewHolder((ViewHolder) viewHolder, i);
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        App app2 = this.appList.get(i);
        ViewHolder.access$000(viewHolder).setImageDrawable(app2.appIcon);
        ViewHolder.access$100(viewHolder).setText(app2.appName);
        ViewHolder.access$200(viewHolder).setText(app2.packageName);
        ViewHolder.access$400(viewHolder).setOnClickListener(new AnonymousClass1(app2));
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return onCreateViewHolder(viewGroup, i);
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(this.context).inflate(R.layout.l_res_0x7f0c0025, viewGroup, false));
    }
}
