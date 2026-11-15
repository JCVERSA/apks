.class public final Lxg4;
.super Ljh;
.source "SourceFile"


# static fields
.field public static final f:Lxg4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxg4;

    invoke-direct {v0}, Lxg4;-><init>()V

    sput-object v0, Lxg4;->f:Lxg4;

    const-string v0, "getOptIntegerFromArray"

    sput-object v0, Lxg4;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lxg4;->g:Ljava/lang/String;

    return-object p0
.end method
