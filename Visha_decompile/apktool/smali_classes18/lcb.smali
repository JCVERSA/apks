.class public abstract Llcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhf5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llcb$a;
    }
.end annotation


# static fields
.field public static final b:Llcb$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llcb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llcb$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Llcb;->b:Llcb$a;

    return-void
.end method
