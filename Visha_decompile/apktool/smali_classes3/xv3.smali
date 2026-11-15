.class public final synthetic Lxv3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpj8;


# instance fields
.field public final synthetic a:Lzv3;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lzv3;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxv3;->a:Lzv3;

    iput-object p2, p0, Lxv3;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lxv3;->a:Lzv3;

    iget-object p0, p0, Lxv3;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lzv3;->b(Lzv3;Landroid/content/Context;)Lzr1;

    move-result-object p0

    return-object p0
.end method
