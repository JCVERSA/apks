.class public interface abstract Lcom/transsion/liblan/interfaces/ITranLibLANFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranComponentFactory;


# static fields
.field public static final FACTORY_ID:Ljava/lang/String; = "com.transsion.liblan.interfaces.ITranLibLANFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getLibLanFromContext(Landroid/content/Context;)Lcom/transsion/liblan/interfaces/ITranLibLAN;
.end method

.method public abstract getLibLanFromOptions(Landroid/content/Context;Ljava/util/List;)Lcom/transsion/liblan/interfaces/ITranLibLAN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/transsion/liblan/interfaces/ITranLibLAN;"
        }
    .end annotation
.end method
