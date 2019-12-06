import java.util.*;

public class Tempt{
        public static void main(String[] args) {
                HashMap<String, Integer> map = new HashMap<>();
                map.put("Jack", 4);
                map.put("Jerry", 2);
                for (Map.Entry<String, Integer> entry: map.entrySet()) {
                        System.out.println(entry.getKey() + " " + entry.getValue());
                }
		TreeMap<String, Integer> map2 = new TreeMap<>(map);
		System.out.println(map2);
        }
}
