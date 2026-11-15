.class public final Lkg4;
.super Leh;
.source "SourceFile"


# static fields
.field public static final g:Lkg4;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkg4;

    invoke-direct {v0}, Lkg4;-><init>()V

    sput-object v0, Lkg4;->g:Lkg4;

    const-string v0, "getNumberFromArray"

    sput-object v0, Lkg4;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leh;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 0

    sget-object p0, Lkg4;->h:Ljava/lang/String;

    return-object p0
.end method
