mac = """
      Lorem Ipsum is simply dummy text of the printing and
      typesetting industry. Lorem Ipsum has been the industry's
      standard dummy text ever since the 1500s, when an unknown
      printer took a galley of type and scrambled it to make a type
      3c:77:e6:68:66:e9
      specimen book. It has survived not only five centuries, but
      also the leap into electronic typesetting, remaining essentially
      unchanged. It was popularised 54:c3:e9:5f:88:a3 in the 1960s with the release of Letraset
      sheets containing Lorem Ipsum passages, and more recently with desktop
      publishing software like Aldus PageMaker including versions of Lorem Ipsum."""

mac_regex = /(?:[0-9A-F][0-9A-F][:\-]){5}[0-9A-F][0-9A-F]/i
pp mac.scan(mac_regex)
