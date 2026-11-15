.class public Lcom/transsion/transfer/androidasync/http/server/n$d;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/server/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/regex/Matcher;

.field public final d:Lcom/transsion/transfer/androidasync/http/server/q;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/server/n$d;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/transfer/androidasync/http/server/n$d;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/transsion/transfer/androidasync/http/server/n$d;->c:Ljava/util/regex/Matcher;

    .line 6
    iput-object p4, p0, Lcom/transsion/transfer/androidasync/http/server/n$d;->d:Lcom/transsion/transfer/androidasync/http/server/q;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/a;Lcom/transsion/transfer/androidasync/http/server/o;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/transfer/androidasync/http/server/n$d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/transsion/transfer/androidasync/http/server/q;Lcom/transsion/transfer/androidasync/http/server/a;)V

    return-void
.end method
