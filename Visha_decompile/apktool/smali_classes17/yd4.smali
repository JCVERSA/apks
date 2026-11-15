.class public final Lyd4;
.super Leg;
.source "SourceFile"


# static fields
.field public static final g:Lyd4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyd4;

    invoke-direct {v0}, Lyd4;-><init>()V

    sput-object v0, Lyd4;->g:Lyd4;

    const-string v0, "getArrayBoolean"

    sput-object v0, Lyd4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leg;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyd4;->h:Ljava/lang/String;

    return-object p0
.end method
