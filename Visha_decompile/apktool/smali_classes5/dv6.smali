.class public final synthetic Ldv6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/MusicPlayListView;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldv6;->a:Lcom/transsion/audio/widgets/MusicPlayListView;

    iput-object p2, p0, Ldv6;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ldv6;->a:Lcom/transsion/audio/widgets/MusicPlayListView;

    iget-object p0, p0, Ldv6;->b:Landroid/view/View;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->e(Lcom/transsion/audio/widgets/MusicPlayListView;Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method
