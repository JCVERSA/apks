.class public final synthetic Lhfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lc74;


# direct methods
.method public synthetic constructor <init>(Lc74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhfd;->b:Lc74;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lhfd;->b:Lc74;

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/fy;->d(Lc74;Landroid/content/DialogInterface;I)V

    return-void
.end method
