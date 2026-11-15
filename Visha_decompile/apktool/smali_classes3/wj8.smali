.class public final synthetic Lwj8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z

.field public final synthetic d:Lzda;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLzda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwj8;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lwj8;->c:Z

    iput-object p3, p0, Lwj8;->d:Lzda;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lwj8;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lwj8;->c:Z

    iget-object p0, p0, Lwj8;->d:Lzda;

    invoke-static {v0, v1, p0}, Lxj8;->a(Landroid/content/Context;ZLzda;)V

    return-void
.end method
