.class public Lvt7$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf43$q;


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

    iput-object p1, p0, Lvt7$b$c;->a:Lvt7$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf43;ZFF)V
    .locals 0

    iget-object p1, p0, Lvt7$b$c;->a:Lvt7$b;

    invoke-virtual {p1}, Lvt7$b;->o()V

    iget-object p1, p0, Lvt7$b$c;->a:Lvt7$b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lvt7$b;->l(Lvt7$b;I)V

    iget-object p0, p0, Lvt7$b$c;->a:Lvt7$b;

    float-to-int p1, p3

    invoke-static {p0, p1}, Lvt7$b;->j(Lvt7$b;I)V

    return-void
.end method
