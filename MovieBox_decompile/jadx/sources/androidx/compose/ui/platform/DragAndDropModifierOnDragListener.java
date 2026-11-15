package androidx.compose.ui.platform;

import android.view.DragEvent;
import android.view.View;
import androidx.compose.ui.draganddrop.DragAndDropNode;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

final class DragAndDropModifierOnDragListener implements View.OnDragListener, androidx.compose.ui.draganddrop.c {

    private final Function3 f5324a;

    private final DragAndDropNode f5325b = new DragAndDropNode(new Function1<androidx.compose.ui.draganddrop.b, androidx.compose.ui.draganddrop.f>() {
        @Override
        public final androidx.compose.ui.draganddrop.f invoke(androidx.compose.ui.draganddrop.b bVar) {
            return null;
        }
    });

    private final androidx.collection.b f5326c = new androidx.collection.b(0, 1, null);

    private final androidx.compose.ui.f f5327d = new androidx.compose.ui.node.l0() {
        public boolean equals(Object other) {
            return other == this;
        }

        public int hashCode() {
            return this.f5328b.f5325b.hashCode();
        }

        @Override
        public DragAndDropNode a() {
            return this.f5328b.f5325b;
        }

        @Override
        public void i(DragAndDropNode node) {
        }
    };

    public DragAndDropModifierOnDragListener(Function3 function3) {
        this.f5324a = function3;
    }

    @Override
    public boolean a(androidx.compose.ui.draganddrop.d dVar) {
        return this.f5326c.contains(dVar);
    }

    @Override
    public void b(androidx.compose.ui.draganddrop.d dVar) {
        this.f5326c.add(dVar);
    }

    public androidx.compose.ui.f d() {
        return this.f5327d;
    }

    @Override
    public boolean onDrag(View view, DragEvent dragEvent) {
        androidx.compose.ui.draganddrop.b bVar = new androidx.compose.ui.draganddrop.b(dragEvent);
        switch (dragEvent.getAction()) {
            case 1:
                boolean zC1 = this.f5325b.C1(bVar);
                Iterator<E> it = this.f5326c.iterator();
                while (it.hasNext()) {
                    ((androidx.compose.ui.draganddrop.d) it.next()).B(bVar);
                }
                return zC1;
            case 2:
                this.f5325b.C(bVar);
                return false;
            case 3:
                return this.f5325b.k0(bVar);
            case 4:
                this.f5325b.Y0(bVar);
                return false;
            case 5:
                this.f5325b.a0(bVar);
                return false;
            case 6:
                this.f5325b.L(bVar);
                return false;
            default:
                return false;
        }
    }
}
