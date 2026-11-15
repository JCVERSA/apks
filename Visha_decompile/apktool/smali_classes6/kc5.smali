.class public final Lkc5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkc5;

.field public static final b:Lcom/squareup/moshi/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkc5;

    invoke-direct {v0}, Lkc5;-><init>()V

    sput-object v0, Lkc5;->a:Lkc5;

    new-instance v0, Lcom/squareup/moshi/j$a;

    invoke-direct {v0}, Lcom/squareup/moshi/j$a;-><init>()V

    new-instance v1, Lw12;

    invoke-direct {v1}, Lw12;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/moshi/j$a;->a(Lcom/squareup/moshi/e$e;)Lcom/squareup/moshi/j$a;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud_drive/base/utils/jsonadapters/LocalDateTimeAdapter;

    invoke-direct {v1}, Lcom/transsion/cloud_drive/base/utils/jsonadapters/LocalDateTimeAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/moshi/j$a;->b(Ljava/lang/Object;)Lcom/squareup/moshi/j$a;

    move-result-object v0

    new-instance v1, Lcom/transsion/cloud_drive/base/utils/jsonadapters/NothingJsonAdapter;

    invoke-direct {v1}, Lcom/transsion/cloud_drive/base/utils/jsonadapters/NothingJsonAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/moshi/j$a;->b(Ljava/lang/Object;)Lcom/squareup/moshi/j$a;

    move-result-object v0

    new-instance v1, Lzg5;

    invoke-direct {v1}, Lzg5;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/moshi/j$a;->c(Lcom/squareup/moshi/e$e;)Lcom/squareup/moshi/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/moshi/j$a;->d()Lcom/squareup/moshi/j;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkc5;->b:Lcom/squareup/moshi/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/moshi/j;
    .locals 0

    sget-object p0, Lkc5;->b:Lcom/squareup/moshi/j;

    return-object p0
.end method
