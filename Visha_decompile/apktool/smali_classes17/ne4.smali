.class public final Lne4;
.super Lph;
.source "SourceFile"


# static fields
.field public static final g:Lne4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lne4;

    invoke-direct {v0}, Lne4;-><init>()V

    sput-object v0, Lne4;->g:Lne4;

    const-string v0, "getArrayString"

    sput-object v0, Lne4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lph;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lne4;->h:Ljava/lang/String;

    return-object p0
.end method
