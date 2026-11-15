.class public final synthetic Lex/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lex/e;

.field public final synthetic b:Lcom/transsion/baselib/db/download/DownloadBean;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lex/e;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lex/d;->a:Lex/e;

    .line 5
    .line 6
    iput-object p2, p0, Lex/d;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 7
    .line 8
    iput-object p3, p0, Lex/d;->c:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lex/d;->a:Lex/e;

    .line 2
    .line 3
    iget-object v1, p0, Lex/d;->b:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iget-object v2, p0, Lex/d;->c:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lex/e;->c(Lex/e;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
