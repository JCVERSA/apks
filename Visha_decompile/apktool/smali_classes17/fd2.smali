.class public interface abstract Lfd2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfd2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Led2;

    invoke-direct {v0}, Led2;-><init>()V

    sput-object v0, Lfd2;->a:Lfd2;

    return-void
.end method


# virtual methods
.method public abstract a(I)Landroid/graphics/drawable/Drawable;
.end method
