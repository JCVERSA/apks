.class public final Lfl0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsi1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lfl0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfl0$a;

    invoke-direct {v0}, Lfl0$a;-><init>()V

    sput-object v0, Lfl0$a;->a:Lfl0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lulb;->a(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    throw p0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lfl0$a;->a(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method
