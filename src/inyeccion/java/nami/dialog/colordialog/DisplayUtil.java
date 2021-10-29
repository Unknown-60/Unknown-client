package nami.dialog.colordialog;

import android.content.Context;
import android.graphics.Point;
import android.view.WindowManager;

/**
* Título: Unknown Client.
* Desarrollador: Unknown-60.
* Código fuente: github.com/Unknown-60
**/

public class DisplayUtil {
    public DisplayUtil() {
        DisplayUtil displayUtil = this;
    }

    public static int dp2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static Point getScreenSize(Context context) {
        Context context2 = context;
        Point point = r7;
        Point point2 = new Point();
        Point point3 = point;
        ((WindowManager) context2.getSystemService("window")).getDefaultDisplay().getSize(point3);
        return point3;
    }

    public static int px2dp(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }
}
