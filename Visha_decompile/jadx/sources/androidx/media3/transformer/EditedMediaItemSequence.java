package androidx.media3.transformer;

import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableList;
import java.util.List;

@UnstableApi
public final class EditedMediaItemSequence {
    public final ImmutableList<EditedMediaItem> editedMediaItems;
    public final boolean isLooping;

    public static final class Builder {
        private boolean isLooping;
        private final ImmutableList.a items;

        public Builder(EditedMediaItem... editedMediaItemArr) {
            this.items = new ImmutableList.a().k(editedMediaItemArr);
        }

        public Builder addGap(long j) {
            this.items.a(new EditedMediaItem.Builder(new MediaItem.Builder().setMediaId("androidx-media3-GapMediaItem").build()).setDurationUs(j).build());
            return this;
        }

        public Builder addItem(EditedMediaItem editedMediaItem) {
            this.items.a(editedMediaItem);
            return this;
        }

        public Builder addItems(EditedMediaItem... editedMediaItemArr) {
            this.items.k(editedMediaItemArr);
            return this;
        }

        public EditedMediaItemSequence build() {
            return new EditedMediaItemSequence(this);
        }

        public Builder setIsLooping(boolean z) {
            this.isLooping = z;
            return this;
        }

        public Builder addItems(List<EditedMediaItem> list) {
            this.items.l(list);
            return this;
        }

        public Builder(List<EditedMediaItem> list) {
            this.items = new ImmutableList.a().l(list);
        }
    }

    public boolean hasGaps() {
        for (int i = 0; i < this.editedMediaItems.size(); i++) {
            if (this.editedMediaItems.get(i).isGap()) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public EditedMediaItemSequence(EditedMediaItem editedMediaItem, EditedMediaItem... editedMediaItemArr) {
        this(new Builder(new EditedMediaItem[0]).addItem(editedMediaItem).addItems(editedMediaItemArr));
    }

    @Deprecated
    public EditedMediaItemSequence(List<EditedMediaItem> list) {
        this(new Builder(new EditedMediaItem[0]).addItems(list));
    }

    @Deprecated
    public EditedMediaItemSequence(List<EditedMediaItem> list, boolean z) {
        this(new Builder(new EditedMediaItem[0]).addItems(list).setIsLooping(z));
    }

    private EditedMediaItemSequence(Builder builder) {
        ImmutableList<EditedMediaItem> immutableListE = builder.items.e();
        this.editedMediaItems = immutableListE;
        Assertions.checkArgument(!immutableListE.isEmpty(), "The sequence must contain at least one EditedMediaItem.");
        this.isLooping = builder.isLooping;
    }
}
