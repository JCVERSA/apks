.class public final synthetic Lct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct;->b:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;

    iput-object p2, p0, Lct;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lct;->b:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;

    iget-object p0, p0, Lct;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;->a(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;Ljava/util/ArrayList;)V

    return-void
.end method
