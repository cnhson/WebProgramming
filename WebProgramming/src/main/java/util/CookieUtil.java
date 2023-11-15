package util;

import javax.servlet.http.Cookie;

public class CookieUtil {
  public static String getCookieValue(Cookie[] cookies, String cookieName) {
    String cookieValue = "";
    if (cookies != null) {
      byte b;
      int i;
      Cookie[] arrayOfCookie;
      for (i = (arrayOfCookie = cookies).length, b = 0; b < i; ) {
        Cookie cookie = arrayOfCookie[b];
        if (cookieName.equals(cookie.getName()))
          cookieValue = cookie.getValue(); 
        b++;
      } 
    } 
    return cookieValue;
  }
}
