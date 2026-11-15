.class public final Lbe4;
.super Lkg;
.source "SourceFile"


# static fields
.field public static final g:Lbe4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbe4;

    invoke-direct {v0}, Lbe4;-><init>()V

    sput-object v0, Lbe4;->g:Lbe4;

    const-string v0, "getArrayFromDict"

    sput-object v0, Lbe4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkg;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lbe4;->h:Ljava/lang/String;

    return-object p0
.end method
