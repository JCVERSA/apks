.class public final synthetic Lcom/transsion/baselib/locale/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/locale/d;

.field public final synthetic b:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baselib/locale/b;->a:Lcom/transsion/baselib/locale/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/baselib/locale/b;->b:Ljava/util/Locale;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/locale/b;->a:Lcom/transsion/baselib/locale/d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/baselib/locale/b;->b:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/transsion/baselib/locale/d;->b(Lcom/transsion/baselib/locale/d;Ljava/util/Locale;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
