.class public final Ldh4;
.super Lmh;
.source "SourceFile"


# static fields
.field public static final g:Ldh4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldh4;

    invoke-direct {v0}, Ldh4;-><init>()V

    sput-object v0, Ldh4;->g:Ldh4;

    const-string v0, "getOptUrlFromArray"

    sput-object v0, Ldh4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Ldh4;->h:Ljava/lang/String;

    return-object p0
.end method
