.class public final Lsfc$f;
.super Ltfc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final c:Lsfc$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsfc$f;

    invoke-direct {v0}, Lsfc$f;-><init>()V

    sput-object v0, Lsfc$f;->c:Lsfc$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "private_to_this"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ltfc;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "private/*private to this*/"

    return-object p0
.end method
