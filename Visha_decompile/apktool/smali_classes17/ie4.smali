.class public final Lie4;
.super Ljh;
.source "SourceFile"


# static fields
.field public static final f:Lie4;

.field public static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lie4;

    invoke-direct {v0}, Lie4;-><init>()V

    sput-object v0, Lie4;->f:Lie4;

    const-string v0, "getArrayOptInteger"

    sput-object v0, Lie4;->g:Ljava/lang/String;

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

    sget-object p0, Lie4;->g:Ljava/lang/String;

    return-object p0
.end method
