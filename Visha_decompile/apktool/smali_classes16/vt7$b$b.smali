.class public Lvt7$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf43$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvt7$b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvt7$b;


# direct methods
.method public constructor <init>(Lvt7$b;)V
    .locals 0

    iput-object p1, p0, Lvt7$b$b;->a:Lvt7$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf43;FF)V
    .locals 1

    iget-object v0, p0, Lvt7$b$b;->a:Lvt7$b;

    invoke-static {v0}, Lvt7$b;->f(Lvt7$b;)Lf43$r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lvt7$b$b;->a:Lvt7$b;

    invoke-static {p0}, Lvt7$b;->f(Lvt7$b;)Lf43$r;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lf43$r;->a(Lf43;FF)V

    :cond_0
    return-void
.end method
