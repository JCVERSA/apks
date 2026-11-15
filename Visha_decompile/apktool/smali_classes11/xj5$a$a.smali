.class public Lxj5$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/dragdrop/DragStateListener$DrawShadowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxj5$a;->a(Laec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Laec;

.field public final synthetic b:Lxj5$a;


# direct methods
.method public constructor <init>(Lxj5$a;Laec;)V
    .locals 0

    iput-object p1, p0, Lxj5$a$a;->b:Lxj5$a;

    iput-object p2, p0, Lxj5$a$a;->a:Laec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateDrawShadow(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateDrawShadow: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LegacyDragDropBackend"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lxj5$a$a;->a:Laec;

    invoke-interface {p0, p1, p2}, Laec;->onUpdateDrawShadow(Ljava/lang/String;I)V

    return-void
.end method
