.class public final Lzg4;
.super Lkh;
.source "SourceFile"


# static fields
.field public static final f:Lzg4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzg4;

    invoke-direct {v0}, Lzg4;-><init>()V

    sput-object v0, Lzg4;->f:Lzg4;

    const-string v0, "getOptNumberFromArray"

    sput-object v0, Lzg4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lzg4;->g:Ljava/lang/String;

    return-object p0
.end method
