.class public final Lve4;
.super Lgg;
.source "SourceFile"


# static fields
.field public static final g:Lve4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lve4;

    invoke-direct {v0}, Lve4;-><init>()V

    sput-object v0, Lve4;->g:Lve4;

    const-string v0, "getColorFromArray"

    sput-object v0, Lve4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgg;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lve4;->h:Ljava/lang/String;

    return-object p0
.end method
