.class public final Lrf4;
.super Lxib;
.source "SourceFile"


# static fields
.field public static final g:Lrf4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrf4;

    invoke-direct {v0}, Lrf4;-><init>()V

    sput-object v0, Lrf4;->g:Lrf4;

    const-string v0, "getDictUrl"

    sput-object v0, Lrf4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lxib;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lrf4;->h:Ljava/lang/String;

    return-object p0
.end method
