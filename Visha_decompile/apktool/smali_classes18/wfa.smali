.class public abstract Lwfa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwfa$a;
    }
.end annotation


# static fields
.field public static final a:Lwfa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwfa$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwfa$a;-><init>(Lvfa;)V

    sput-object v0, Lwfa;->a:Lwfa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lsfa;)Lufa;
.end method
