.class public abstract Lcl4$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcl4;

    invoke-direct {v0}, Lcl4;-><init>()V

    sput-object v0, Lcl4$d;->a:Lcl4;

    return-void
.end method
