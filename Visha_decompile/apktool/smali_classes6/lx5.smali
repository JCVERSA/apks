.class public final synthetic Llx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/net/Uri;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llx5;->b:Landroid/content/Context;

    iput-object p2, p0, Llx5;->c:Landroid/net/Uri;

    iput-object p3, p0, Llx5;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Llx5;->b:Landroid/content/Context;

    iget-object v1, p0, Llx5;->c:Landroid/net/Uri;

    iget-object p0, p0, Llx5;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lpx5;->b(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
