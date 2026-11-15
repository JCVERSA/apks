.class public final Lsg;
.super Lph;
.source "SourceFile"


# static fields
.field public static final g:Lsg;

.field public static final h:Ljava/lang/String;

.field public static final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsg;

    invoke-direct {v0}, Lsg;-><init>()V

    sput-object v0, Lsg;->g:Lsg;

    const-string v0, "getString"

    sput-object v0, Lsg;->h:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lsg;->i:Z

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

    sget-object p0, Lsg;->h:Ljava/lang/String;

    return-object p0
.end method

.method public m()Z
    .locals 0

    sget-boolean p0, Lsg;->i:Z

    return p0
.end method
