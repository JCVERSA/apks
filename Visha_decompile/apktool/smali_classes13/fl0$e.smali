.class public final Lfl0$e;
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
    name = "e"
.end annotation


# static fields
.field public static final a:Lfl0$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfl0$e;

    invoke-direct {v0}, Lfl0$e;-><init>()V

    sput-object v0, Lfl0$e;->a:Lfl0$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Lzfb;
    .locals 0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lfl0$e;->a(Lokhttp3/ResponseBody;)Lzfb;

    move-result-object p0

    return-object p0
.end method
