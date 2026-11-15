.class public final La95;
.super Ltfc;
.source "SourceFile"


# static fields
.field public static final c:La95;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La95;

    invoke-direct {v0}, La95;-><init>()V

    sput-object v0, La95;->c:La95;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "protected_static"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ltfc;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "protected/*protected static*/"

    return-object p0
.end method

.method public d()Ltfc;
    .locals 0

    sget-object p0, Lsfc$g;->c:Lsfc$g;

    return-object p0
.end method
