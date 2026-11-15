.class public final synthetic Lcom/transsion/web/share/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/transsion/web/share/k;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/transsion/web/share/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/web/share/g;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/web/share/g;->b:Lcom/transsion/web/share/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/web/share/g;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/web/share/g;->b:Lcom/transsion/web/share/k;

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p2, Ljava/lang/String;

    .line 8
    .line 9
    check-cast p3, Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, p1, p2, p3}, Lcom/transsion/web/share/k;->d(Landroid/content/Context;Lcom/transsion/web/share/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
