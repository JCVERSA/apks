package app.fast.ssh.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.hatunnel.plus.R;
import java.util.List;

public class FileAdapter extends RecyclerView.Adapter<ViewHolder> {
    private OnItemClickListener itemClickListener;
    private List<ImportItem> itemList;

    public static class ImportItem {
        String file_name;
        int icon;

        public ImportItem(int i, String str) {
            this.icon = i;
            this.file_name = str;
        }
    }

    public interface OnItemClickListener {
        void onClick(int i);
    }

    static class ViewHolder extends RecyclerView.ViewHolder {
        TextView file_name;
        ImageView icon;
        View view;

        ViewHolder(View view) {
            super(view);
            this.view = view;
            this.icon = (ImageView) view.findViewById(R.id.icon);
            this.file_name = (TextView) view.findViewById(R.id.l_res_0x7f0900f4);
        }
    }

    public FileAdapter(List<ImportItem> list) {
        this.itemList = list;
    }

    @Override
    public int getItemCount() {
        return this.itemList.size();
    }

    @Override
    public long getItemId(int i) {
        return i;
    }

    @Override
    public int getItemViewType(int i) {
        return i;
    }

    void m486lambda$onBindViewHolder$0$appfastsshadapterFileAdapter(int i, View view) {
        OnItemClickListener onItemClickListener = this.itemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onClick(i);
        }
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        onBindViewHolder((ViewHolder) viewHolder, i);
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        viewHolder.icon.setImageResource(this.itemList.get(i).icon);
        viewHolder.file_name.setText(this.itemList.get(i).file_name);
        viewHolder.view.setOnClickListener(new FileAdapter$$ExternalSyntheticLambda0(this, i));
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return onCreateViewHolder(viewGroup, i);
    }

    @Override
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.l_res_0x7f0c0046, viewGroup, false));
    }

    public void setItemClickListener(OnItemClickListener onItemClickListener) {
        this.itemClickListener = onItemClickListener;
    }
}
