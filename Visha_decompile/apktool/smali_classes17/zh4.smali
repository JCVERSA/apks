.class public final Lzh4;
.super Lrh;
.source "SourceFile"


# static fields
.field public static final g:Lzh4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzh4;

    invoke-direct {v0}, Lzh4;-><init>()V

    sput-object v0, Lzh4;->g:Lzh4;

    const-string v0, "getUrlFromArray"

    sput-object v0, Lzh4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lzh4;->h:Ljava/lang/String;

    return-object p0
.end method
