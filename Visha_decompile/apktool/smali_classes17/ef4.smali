.class public final Lef4;
.super Lig;
.source "SourceFile"


# static fields
.field public static final g:Lef4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lef4;

    invoke-direct {v0}, Lef4;-><init>()V

    sput-object v0, Lef4;->g:Lef4;

    const-string v0, "getDictFromArray"

    sput-object v0, Lef4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lig;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lef4;->h:Ljava/lang/String;

    return-object p0
.end method
