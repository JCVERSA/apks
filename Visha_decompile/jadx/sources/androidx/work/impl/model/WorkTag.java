package androidx.work.impl.model;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.Index;
import com.lzy.okgo.model.Progress;

@Entity(foreignKeys = {@ForeignKey(childColumns = {"work_spec_id"}, entity = WorkSpec.class, onDelete = 5, onUpdate = 5, parentColumns = {TtmlNode.ATTR_ID})}, indices = {@Index({"work_spec_id"})}, primaryKeys = {Progress.TAG, "work_spec_id"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class WorkTag {

    @NonNull
    @ColumnInfo(name = Progress.TAG)
    public final String tag;

    @NonNull
    @ColumnInfo(name = "work_spec_id")
    public final String workSpecId;

    public WorkTag(@NonNull String str, @NonNull String str2) {
        this.tag = str;
        this.workSpecId = str2;
    }
}
