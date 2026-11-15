.class public final Lsr1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk9b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsr1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lsr1$b;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;)Lk9b$a;
    .locals 0

    invoke-virtual {p0, p1}, Lsr1$b;->b(Landroid/content/Context;)Lsr1$b;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/content/Context;)Lsr1$b;
    .locals 0

    invoke-static {p1}, Lvd8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lsr1$b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public build()Lk9b;
    .locals 2

    iget-object v0, p0, Lsr1$b;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lvd8;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lsr1;

    iget-object p0, p0, Lsr1$b;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsr1;-><init>(Landroid/content/Context;Lsr1$a;)V

    return-object v0
.end method
