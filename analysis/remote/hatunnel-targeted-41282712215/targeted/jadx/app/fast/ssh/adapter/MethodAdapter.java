package app.fast.ssh.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import app.fast.ssh.ProtectedFastSSH;
import com.hatunnel.plus.R;
import java.util.List;

public class MethodAdapter extends BaseAdapter {
    private final List<SpinnerItem> itemList;
    private final Context mContext;
    private int position = 0;

    public static class SpinnerItem {
        public String conf;
        public String description;
        public String flag;
        public String name;
    }

    private static class ViewHolder {
        ImageView select_image;
        TextView server_description;
        ImageView server_flag;
        TextView server_name;

        private ViewHolder() {
        }

        ViewHolder(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public MethodAdapter(Context context, List<SpinnerItem> list) {
        this.mContext = context;
        this.itemList = list;
    }

    private int getImageResourceId(String str) {
        return this.mContext.getResources().getIdentifier(ProtectedFastSSH.s("⿂"), ProtectedFastSSH.s("⿃"), this.mContext.getPackageName());
    }

    @Override
    public int getCount() {
        return this.itemList.size();
    }

    @Override
    public Object getItem(int i) {
        return this.itemList.get(i);
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(this.mContext).inflate(R.layout.l_res_0x7f0c0061, (ViewGroup) null);
            viewHolder = new ViewHolder(null);
            viewHolder.server_flag = (ImageView) view.findViewById(R.id.l_res_0x7f090222);
            viewHolder.server_name = (TextView) view.findViewById(R.id.l_res_0x7f090223);
            viewHolder.server_description = (TextView) view.findViewById(R.id.l_res_0x7f090221);
            viewHolder.select_image = (ImageView) view.findViewById(R.id.l_res_0x7f09021c);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        SpinnerItem spinnerItem = this.itemList.get(i);
        viewHolder.server_flag.setImageResource(getImageResourceId(spinnerItem.flag.toLowerCase()));
        viewHolder.server_name.setText(spinnerItem.name);
        viewHolder.server_description.setText(spinnerItem.description);
        if (i != this.position) {
            viewHolder.select_image.setVisibility(4);
            return view;
        }
        viewHolder.select_image.setVisibility(0);
        viewHolder.select_image.setImageResource(R.drawable.l_res_0x7f0800dd);
        return view;
    }

    public void setPosition(int i) {
        this.position = i;
    }
}
